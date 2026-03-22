.class final Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel$queryRecommend$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NewUserRecommendShortViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;->I()Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.recommend.NewUserRecommendShortViewModel$queryRecommend$1"
    f = "NewUserRecommendShortViewModel.kt"
    l = {
        0x1f
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNewUserRecommendShortViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewUserRecommendShortViewModel.kt\ncom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel$queryRecommend$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,83:1\n125#2,13:84\n*S KotlinDebug\n*F\n+ 1 NewUserRecommendShortViewModel.kt\ncom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel$queryRecommend$1\n*L\n41#1:84,13\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel$queryRecommend$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel$queryRecommend$1;->i:Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel$queryRecommend$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel$queryRecommend$1;->i:Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel$queryRecommend$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel$queryRecommend$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel$queryRecommend$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel$queryRecommend$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel$queryRecommend$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel$queryRecommend$1;->h:I

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel$queryRecommend$1;->i:Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {p1, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    sget-object p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 47
    .line 48
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel$queryRecommend$1;->h:I

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->G(Lrs/c;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-ne p1, v0, :cond_2

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel$queryRecommend$1;->i:Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;

    .line 58
    .line 59
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/4 v2, 0x0

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    move-object v1, p1

    .line 67
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;

    .line 68
    .line 69
    if-nez v1, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-static {v1, v3}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    const-string v1, "empty data"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->y(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/recommend/a$a;

    .line 93
    .line 94
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/viewmodel/recommend/a$a;-><init>(Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0, v3}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel$queryRecommend$1;->i:Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;

    .line 101
    .line 102
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz p1, :cond_7

    .line 107
    .line 108
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 109
    .line 110
    if-eqz v1, :cond_5

    .line 111
    .line 112
    move-object v1, p1

    .line 113
    check-cast v1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    const/4 v1, 0x0

    .line 117
    :goto_2
    if-nez v1, :cond_6

    .line 118
    .line 119
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 120
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v2, "onResponseFailure exception -> "

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string p1, ", exception must not be null"

    .line 139
    .line 140
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    const-string v1, "ApiBuilder"

    .line 148
    .line 149
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {p1, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->x(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 165
    .line 166
    .line 167
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 168
    .line 169
    return-object p1
.end method
