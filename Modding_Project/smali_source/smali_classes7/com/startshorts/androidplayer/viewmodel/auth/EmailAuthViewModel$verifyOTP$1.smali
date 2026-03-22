.class final Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EmailAuthViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;->D(Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.startshorts.androidplayer.viewmodel.auth.EmailAuthViewModel$verifyOTP$1"
    f = "EmailAuthViewModel.kt"
    l = {
        0x50
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;->k:Ljava/lang/String;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;->k:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;->h:I

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v3, "verifyOTP start -> email="

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;->j:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v3, ",otp="

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;->k:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRepo;->a:Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRepo;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;->j:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;->k:Ljava/lang/String;

    .line 72
    .line 73
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;->h:I

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    invoke-virtual {p1, v2, v1, v3, p0}, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRepo;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-ne p1, v0, :cond_2

    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;

    .line 84
    .line 85
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/auth/d$f;

    .line 96
    .line 97
    sget-object v2, Lcom/hades/aar/auth/base/AuthType;->EMAIL_VERIFY:Lcom/hades/aar/auth/base/AuthType;

    .line 98
    .line 99
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/auth/d$f;-><init>(Lcom/hades/aar/auth/base/AuthType;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;

    .line 110
    .line 111
    const/4 v2, 0x2

    .line 112
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;-><init>(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->V0()Lkotlinx/coroutines/r;

    .line 121
    .line 122
    .line 123
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$verifyOTP$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;

    .line 124
    .line 125
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-eqz p1, :cond_4

    .line 130
    .line 131
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 132
    .line 133
    if-eqz v1, :cond_4

    .line 134
    .line 135
    check-cast p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->isNetworkError()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-nez v1, :cond_4

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/auth/d$e;

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getMessage()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    sget-object v2, Lcom/hades/aar/auth/base/AuthType;->EMAIL_VERIFY:Lcom/hades/aar/auth/base/AuthType;

    .line 154
    .line 155
    invoke-direct {v1, p1, v2}, Lcom/startshorts/androidplayer/viewmodel/auth/d$e;-><init>(Ljava/lang/String;Lcom/hades/aar/auth/base/AuthType;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 162
    .line 163
    return-object p1
.end method
