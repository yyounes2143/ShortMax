.class final Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySkuList$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SubsRemoteDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;->f(Lrs/c;)Ljava/lang/Object;
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
        "Lcom/startshorts/androidplayer/bean/subs/QuerySubsSkuResult;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.repo.billing.subs.SubsRemoteDS$querySkuList$2"
    f = "SubsRemoteDS.kt"
    l = {
        0x21,
        0x27
    }
    m = "invokeSuspend"
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
            "Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySkuList$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static synthetic i(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySkuList$2;->j(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final j(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isPro()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    return p0
.end method


# virtual methods
.method public final create(Lrs/c;)Lrs/c;
    .locals 1
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
    new-instance v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySkuList$2;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySkuList$2;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySkuList$2;->invoke(Lrs/c;)Ljava/lang/Object;

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
            "Lcom/startshorts/androidplayer/bean/subs/QuerySubsSkuResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySkuList$2;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySkuList$2;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySkuList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySkuList$2;->h:I

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
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lud/b;->a:Lud/b;

    .line 35
    .line 36
    invoke-virtual {p1}, Lud/b;->Z1()J

    .line 37
    .line 38
    .line 39
    move-result-wide v7

    .line 40
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->A0()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->q1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    sget-object v1, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {p1}, Lud/b;->i0()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    iput v2, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySkuList$2;->h:I

    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    move-object v9, p0

    .line 85
    invoke-interface/range {v4 .. v9}, Lcom/startshorts/androidplayer/manager/api/base/k$a;->B0(Ljava/lang/String;Ljava/lang/String;JLrs/c;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-ne p1, v0, :cond_4

    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_4
    :goto_0
    check-cast p1, Lcom/startshorts/androidplayer/bean/api/ServerResult;

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_5
    :goto_1
    sget-object v1, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {p1}, Lud/b;->i0()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    iput v3, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySkuList$2;->h:I

    .line 106
    .line 107
    const/4 v5, 0x0

    .line 108
    move-object v9, p0

    .line 109
    invoke-interface/range {v4 .. v9}, Lcom/startshorts/androidplayer/manager/api/base/k$a;->I0(Ljava/lang/String;Ljava/lang/String;JLrs/c;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-ne p1, v0, :cond_6

    .line 114
    .line 115
    return-object v0

    .line 116
    :cond_6
    :goto_2
    check-cast p1, Lcom/startshorts/androidplayer/bean/api/ServerResult;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ServerResult;->getData()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lcom/startshorts/androidplayer/bean/subs/QuerySubsSkuResult;

    .line 123
    .line 124
    if-eqz v0, :cond_7

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/QuerySubsSkuResult;->getProductList()Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_7

    .line 131
    .line 132
    new-instance v1, Lcom/startshorts/androidplayer/repo/billing/subs/a;

    .line 133
    .line 134
    invoke-direct {v1}, Lcom/startshorts/androidplayer/repo/billing/subs/a;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 142
    .line 143
    .line 144
    :cond_7
    :goto_3
    return-object p1
.end method
