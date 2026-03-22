.class final Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DiscoverRemoteDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;->d(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIILrs/c;)Ljava/lang/Object;
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
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS$fetchModuleMorePage$2"
    f = "DiscoverRemoteDS.kt"
    l = {
        0x37,
        0x39
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:I

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:I

.field final synthetic o:I

.field final synthetic p:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->i:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->k:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->l:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->m:Ljava/lang/String;

    .line 10
    .line 11
    iput p6, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->n:I

    .line 12
    .line 13
    iput p7, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->o:I

    .line 14
    .line 15
    iput p8, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->p:I

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final create(Lrs/c;)Lrs/c;
    .locals 11
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
    new-instance v10, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->i:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->k:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->l:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->m:Ljava/lang/String;

    .line 12
    .line 13
    iget v6, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->n:I

    .line 14
    .line 15
    iget v7, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->o:I

    .line 16
    .line 17
    iget v8, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->p:I

    .line 18
    .line 19
    move-object v0, v10

    .line 20
    move-object v9, p1

    .line 21
    invoke-direct/range {v0 .. v9}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIILrs/c;)V

    .line 22
    .line 23
    .line 24
    return-object v10
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->invoke(Lrs/c;)Ljava/lang/Object;

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
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->h:I

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
    goto :goto_1

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
    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->i1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    sget-object p1, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    iget-object v5, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->i:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v6, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->j:Ljava/lang/String;

    .line 65
    .line 66
    iget v7, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->k:I

    .line 67
    .line 68
    iget-object v8, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->l:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v9, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->m:Ljava/lang/String;

    .line 71
    .line 72
    iget v10, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->n:I

    .line 73
    .line 74
    iget v11, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->o:I

    .line 75
    .line 76
    iget v12, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->p:I

    .line 77
    .line 78
    iput v3, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->h:I

    .line 79
    .line 80
    move-object v13, p0

    .line 81
    invoke-interface/range {v4 .. v13}, Lcom/startshorts/androidplayer/manager/api/base/k$a;->e(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIILrs/c;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v0, :cond_3

    .line 86
    .line 87
    return-object v0

    .line 88
    :cond_3
    :goto_0
    check-cast p1, Lcom/startshorts/androidplayer/bean/api/ServerResult;

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    sget-object p1, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    iget-object v4, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->i:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v5, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->j:Ljava/lang/String;

    .line 100
    .line 101
    iget v6, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->k:I

    .line 102
    .line 103
    iget-object v7, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->l:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v8, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->m:Ljava/lang/String;

    .line 106
    .line 107
    iget v9, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->n:I

    .line 108
    .line 109
    iget v10, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->o:I

    .line 110
    .line 111
    iget v11, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->p:I

    .line 112
    .line 113
    iput v2, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchModuleMorePage$2;->h:I

    .line 114
    .line 115
    move-object v12, p0

    .line 116
    invoke-interface/range {v3 .. v12}, Lcom/startshorts/androidplayer/manager/api/base/k$a;->e1(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIILrs/c;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-ne p1, v0, :cond_5

    .line 121
    .line 122
    return-object v0

    .line 123
    :cond_5
    :goto_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/api/ServerResult;

    .line 124
    .line 125
    :goto_2
    return-object p1
.end method
