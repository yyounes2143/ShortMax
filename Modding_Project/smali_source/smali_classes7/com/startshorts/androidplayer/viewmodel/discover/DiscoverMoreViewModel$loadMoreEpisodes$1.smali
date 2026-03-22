.class final Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DiscoverMoreViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;->B(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Ljava/lang/String;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.discover.DiscoverMoreViewModel$loadMoreEpisodes$1"
    f = "DiscoverMoreViewModel.kt"
    l = {
        0x2e,
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;->i:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;->k:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;->i:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;->k:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;-><init>(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_0

    .line 12
    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    check-cast p1, Lkotlin/Result;

    .line 19
    .line 20
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_3

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;->i:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleStyle()Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 v1, 0x0

    .line 43
    const-string v4, ""

    .line 44
    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const/16 v5, 0xc

    .line 53
    .line 54
    if-ne p1, v5, :cond_6

    .line 55
    .line 56
    sget-object p1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;->i:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-nez v2, :cond_4

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    move-object v4, v2

    .line 68
    :goto_0
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;->j:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v5, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;->i:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 71
    .line 72
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getRecommendId()Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    if-eqz v5, :cond_5

    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    :cond_5
    iput v3, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;->h:I

    .line 83
    .line 84
    invoke-virtual {p1, v4, v2, v1, p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->J(Ljava/lang/String;Ljava/lang/String;ILrs/c;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-ne p1, v0, :cond_9

    .line 89
    .line 90
    return-object v0

    .line 91
    :cond_6
    :goto_1
    sget-object p1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 92
    .line 93
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;->i:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 94
    .line 95
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleId()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    if-nez v3, :cond_7

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_7
    move-object v4, v3

    .line 103
    :goto_2
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;->j:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v5, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;->i:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 106
    .line 107
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getRecommendId()Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    if-eqz v5, :cond_8

    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    :cond_8
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;->h:I

    .line 118
    .line 119
    invoke-virtual {p1, v4, v3, v1, p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->o(Ljava/lang/String;Ljava/lang/String;ILrs/c;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-ne p1, v0, :cond_9

    .line 124
    .line 125
    return-object v0

    .line 126
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;->k:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;

    .line 127
    .line 128
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_a

    .line 133
    .line 134
    move-object v1, p1

    .line 135
    check-cast v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/discover/f$c;

    .line 142
    .line 143
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/viewmodel/discover/f$c;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v0, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :cond_a
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;->k:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;

    .line 150
    .line 151
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-eqz p1, :cond_b

    .line 156
    .line 157
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->s(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;->x(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 162
    .line 163
    .line 164
    :cond_b
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 165
    .line 166
    return-object p1
.end method
