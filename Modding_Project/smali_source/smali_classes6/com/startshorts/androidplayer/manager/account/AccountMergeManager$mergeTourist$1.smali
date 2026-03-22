.class final Lcom/startshorts/androidplayer/manager/account/AccountMergeManager$mergeTourist$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AccountMergeManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/account/AccountMergeManager;->k()V
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
    c = "com.startshorts.androidplayer.manager.account.AccountMergeManager$mergeTourist$1"
    f = "AccountMergeManager.kt"
    l = {
        0xb1
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAccountMergeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountMergeManager.kt\ncom/startshorts/androidplayer/manager/account/AccountMergeManager$mergeTourist$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,185:1\n125#2,13:186\n*S KotlinDebug\n*F\n+ 1 AccountMergeManager.kt\ncom/startshorts/androidplayer/manager/account/AccountMergeManager$mergeTourist$1\n*L\n179#1:186,13\n*E\n"
    }
.end annotation


# instance fields
.field h:I


# direct methods
.method constructor <init>(Lrs/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/account/AccountMergeManager$mergeTourist$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 0
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
    new-instance p1, Lcom/startshorts/androidplayer/manager/account/AccountMergeManager$mergeTourist$1;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Lcom/startshorts/androidplayer/manager/account/AccountMergeManager$mergeTourist$1;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/account/AccountMergeManager$mergeTourist$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/account/AccountMergeManager$mergeTourist$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/account/AccountMergeManager$mergeTourist$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/account/AccountMergeManager$mergeTourist$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/manager/account/AccountMergeManager$mergeTourist$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 34
    .line 35
    iput v2, p0, Lcom/startshorts/androidplayer/manager/account/AccountMergeManager$mergeTourist$1;->h:I

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->U0(Lrs/c;)Ljava/lang/Object;

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
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    move-object v0, p1

    .line 51
    check-cast v0, Lcom/startshorts/androidplayer/bean/account/MergeUserInfo;

    .line 52
    .line 53
    invoke-static {}, Lcom/startshorts/androidplayer/manager/account/AccountMergeManager;->h()Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    new-instance v2, Lcom/startshorts/androidplayer/manager/account/a$f;

    .line 58
    .line 59
    invoke-direct {v2, v0}, Lcom/startshorts/androidplayer/manager/account/a$f;-><init>(Lcom/startshorts/androidplayer/bean/account/MergeUserInfo;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    instance-of v0, p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    move-object v0, p1

    .line 76
    check-cast v0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const/4 v0, 0x0

    .line 80
    :goto_1
    if-nez v0, :cond_5

    .line 81
    .line 82
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v2, "onResponseFailure exception -> "

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p1, ", exception must not be null"

    .line 102
    .line 103
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-string v1, "ApiBuilder"

    .line 111
    .line 112
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    invoke-static {}, Lcom/startshorts/androidplayer/manager/account/AccountMergeManager;->h()Landroidx/lifecycle/MutableLiveData;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    new-instance v1, Lcom/startshorts/androidplayer/manager/account/a$c;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getMessage()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/manager/account/a$c;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {p1, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 133
    .line 134
    return-object p1
.end method
