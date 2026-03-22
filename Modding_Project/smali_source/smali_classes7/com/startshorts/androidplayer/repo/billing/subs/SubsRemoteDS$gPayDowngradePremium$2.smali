.class final Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SubsRemoteDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
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
        "Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.repo.billing.subs.SubsRemoteDS$gPayDowngradePremium$2"
    f = "SubsRemoteDS.kt"
    l = {
        0x71
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

.field final synthetic k:Lzc/f;

.field final synthetic l:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

.field final synthetic m:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

.field final synthetic n:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Lzc/f;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->i:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->j:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->k:Lzc/f;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->l:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->m:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->n:Ljava/lang/String;

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
    new-instance v8, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->i:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->j:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->k:Lzc/f;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->l:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->m:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->n:Ljava/lang/String;

    .line 14
    .line 15
    move-object v0, v8

    .line 16
    move-object v7, p1

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Lrs/c;)V

    .line 18
    .line 19
    .line 20
    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->invoke(Lrs/c;)Ljava/lang/Object;

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
            "Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v10

    .line 7
    iget v0, v14, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->h:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    move-object/from16 v0, p1

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v2, v14, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->i:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v3, v14, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->j:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSource()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget-object v4, v14, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->j:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getReceiveType()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    iget-object v5, v14, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->j:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 53
    .line 54
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    iget-object v6, v14, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->j:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 59
    .line 60
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    iget-object v7, v14, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->k:Lzc/f;

    .line 65
    .line 66
    invoke-virtual {v7}, Lzc/f;->f()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    iget-object v8, v14, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->k:Lzc/f;

    .line 71
    .line 72
    invoke-virtual {v8}, Lzc/f;->h()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    if-nez v8, :cond_2

    .line 77
    .line 78
    const-string v8, ""

    .line 79
    .line 80
    :cond_2
    iget-object v9, v14, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->l:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 81
    .line 82
    const/4 v11, 0x0

    .line 83
    if-eqz v9, :cond_3

    .line 84
    .line 85
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    goto :goto_0

    .line 94
    :cond_3
    move-object v9, v11

    .line 95
    :goto_0
    iget-object v12, v14, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->l:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 96
    .line 97
    if-eqz v12, :cond_4

    .line 98
    .line 99
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    :cond_4
    move-object/from16 v17, v11

    .line 108
    .line 109
    iget-object v11, v14, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->m:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 110
    .line 111
    invoke-virtual {v11}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductId()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    iget-object v12, v14, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->n:Ljava/lang/String;

    .line 116
    .line 117
    sget-object v13, Lcom/startshorts/androidplayer/manager/api/base/p;->a:Lcom/startshorts/androidplayer/manager/api/base/p$a;

    .line 118
    .line 119
    invoke-virtual {v13}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->g()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v13

    .line 123
    iput v1, v14, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayDowngradePremium$2;->h:I

    .line 124
    .line 125
    const/4 v1, 0x0

    .line 126
    const/4 v15, 0x1

    .line 127
    const/16 v16, 0x0

    .line 128
    .line 129
    move-object/from16 v18, v10

    .line 130
    .line 131
    move-object/from16 v10, v17

    .line 132
    .line 133
    move-object/from16 v14, p0

    .line 134
    .line 135
    invoke-static/range {v0 .. v16}, Lcom/startshorts/androidplayer/manager/api/base/k$a$a;->e(Lcom/startshorts/androidplayer/manager/api/base/k$a;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    move-object/from16 v1, v18

    .line 140
    .line 141
    if-ne v0, v1, :cond_5

    .line 142
    .line 143
    return-object v1

    .line 144
    :cond_5
    :goto_1
    return-object v0
.end method
