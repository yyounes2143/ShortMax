.class final Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UnlockRemoteDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;->b(ZLandroid/content/Context;IILjava/lang/String;Lrs/c;)Ljava/lang/Object;
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
        "Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.repo.unlock.UnlockRemoteDS$querySingleUnlockEpisodeMethods$2"
    f = "UnlockRemoteDS.kt"
    l = {
        0x29,
        0x32
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:I

.field final synthetic j:I

.field final synthetic k:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;->i:I

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;->j:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;->k:Ljava/lang/String;

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
    new-instance v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;->i:I

    .line 4
    .line 5
    iget v2, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;->j:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;->k:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;-><init>(IILjava/lang/String;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;->invoke(Lrs/c;)Ljava/lang/Object;

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
            "Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object v12, p0

    .line 2
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v13

    .line 6
    iget v0, v12, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;->h:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    move-object/from16 v0, p1

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    move-object/from16 v0, p1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lud/b;->a:Lud/b;

    .line 41
    .line 42
    invoke-virtual {v0}, Lud/b;->Z1()J

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    sget-object v3, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->c1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    sget-object v1, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0}, Lud/b;->i0()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    iget v3, v12, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;->i:I

    .line 79
    .line 80
    iget v4, v12, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;->j:I

    .line 81
    .line 82
    iget-object v7, v12, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;->k:Ljava/lang/String;

    .line 83
    .line 84
    iput v2, v12, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;->h:I

    .line 85
    .line 86
    const/4 v9, 0x0

    .line 87
    const/4 v10, 0x0

    .line 88
    const/4 v11, 0x4

    .line 89
    const/4 v14, 0x0

    .line 90
    move-object v0, v1

    .line 91
    move v1, v3

    .line 92
    move v2, v4

    .line 93
    move v3, v9

    .line 94
    move-object v4, v7

    .line 95
    move-object v7, v10

    .line 96
    move-object v9, p0

    .line 97
    move v10, v11

    .line 98
    move-object v11, v14

    .line 99
    invoke-static/range {v0 .. v11}, Lcom/startshorts/androidplayer/manager/api/base/k$a$a;->p(Lcom/startshorts/androidplayer/manager/api/base/k$a;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-ne v0, v13, :cond_3

    .line 104
    .line 105
    return-object v13

    .line 106
    :cond_3
    :goto_0
    check-cast v0, Lcom/startshorts/androidplayer/bean/api/ServerResult;

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    sget-object v2, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v0}, Lud/b;->i0()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    iget v3, v12, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;->i:I

    .line 120
    .line 121
    iget v4, v12, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;->j:I

    .line 122
    .line 123
    iget-object v7, v12, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;->k:Ljava/lang/String;

    .line 124
    .line 125
    iput v1, v12, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$2;->h:I

    .line 126
    .line 127
    const/4 v9, 0x0

    .line 128
    const/4 v10, 0x0

    .line 129
    const/4 v11, 0x4

    .line 130
    const/4 v14, 0x0

    .line 131
    move-object v0, v2

    .line 132
    move v1, v3

    .line 133
    move v2, v4

    .line 134
    move v3, v9

    .line 135
    move-object v4, v7

    .line 136
    move-object v7, v10

    .line 137
    move-object v9, p0

    .line 138
    move v10, v11

    .line 139
    move-object v11, v14

    .line 140
    invoke-static/range {v0 .. v11}, Lcom/startshorts/androidplayer/manager/api/base/k$a$a;->q(Lcom/startshorts/androidplayer/manager/api/base/k$a;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-ne v0, v13, :cond_5

    .line 145
    .line 146
    return-object v13

    .line 147
    :cond_5
    :goto_1
    check-cast v0, Lcom/startshorts/androidplayer/bean/api/ServerResult;

    .line 148
    .line 149
    :goto_2
    return-object v0
.end method
