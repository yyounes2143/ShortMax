.class final Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$regionCode$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PhoneAuthViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->T()V
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
    c = "com.startshorts.androidplayer.viewmodel.auth.PhoneAuthViewModel$regionCode$1"
    f = "PhoneAuthViewModel.kt"
    l = {
        0x113
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPhoneAuthViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhoneAuthViewModel.kt\ncom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$regionCode$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,288:1\n125#2,13:289\n*S KotlinDebug\n*F\n+ 1 PhoneAuthViewModel.kt\ncom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$regionCode$1\n*L\n279#1:289,13\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$regionCode$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$regionCode$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

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
    .locals 1
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$regionCode$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$regionCode$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$regionCode$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Lrs/c;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$regionCode$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$regionCode$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$regionCode$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$regionCode$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$regionCode$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRepo;->a:Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRepo;

    .line 34
    .line 35
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$regionCode$1;->h:I

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRepo;->d(Lrs/c;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$regionCode$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    move-object v1, p1

    .line 53
    check-cast v1, Lcom/startshorts/androidplayer/bean/region/Region;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/auth/f$c;

    .line 60
    .line 61
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$c;-><init>(Lcom/startshorts/androidplayer/bean/region/Region;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$regionCode$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 68
    .line 69
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_6

    .line 74
    .line 75
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 76
    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    move-object v1, p1

    .line 80
    check-cast v1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    const/4 v1, 0x0

    .line 84
    :goto_1
    if-nez v1, :cond_5

    .line 85
    .line 86
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v2, "onResponseFailure exception -> "

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p1, ", exception must not be null"

    .line 106
    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const-string v1, "ApiBuilder"

    .line 115
    .line 116
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/auth/f$d;

    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->isNetworkError()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getMessage()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-direct {v0, v2, v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$d;-><init>(ZLjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 141
    .line 142
    return-object p1
.end method
