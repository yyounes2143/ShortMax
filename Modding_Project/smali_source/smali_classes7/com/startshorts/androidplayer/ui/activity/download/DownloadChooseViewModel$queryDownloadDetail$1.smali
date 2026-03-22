.class final Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadChooseViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->F(I)V
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
    c = "com.startshorts.androidplayer.ui.activity.download.DownloadChooseViewModel$queryDownloadDetail$1"
    f = "DownloadChooseViewModel.kt"
    l = {
        0x20,
        0x27
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:I

.field final synthetic k:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;


# direct methods
.method constructor <init>(ILcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;->k:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

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
    new-instance p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;

    .line 2
    .line 3
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;->j:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;->k:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;-><init>(ILcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;->i:I

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;->h:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/QueryDownloadEpisodesResult;

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    check-cast p1, Lkotlin/Result;

    .line 35
    .line 36
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    sget-object p1, Lcom/startshorts/androidplayer/repo/immersion/DownloadEpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/DownloadEpisodeRepo;

    .line 45
    .line 46
    iget v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;->j:I

    .line 47
    .line 48
    iput v3, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;->i:I

    .line 49
    .line 50
    invoke-virtual {p1, v1, p0}, Lcom/startshorts/androidplayer/repo/immersion/DownloadEpisodeRepo;->d(ILrs/c;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-ne p1, v0, :cond_3

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_3
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_7

    .line 62
    .line 63
    invoke-static {p1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    const/4 p1, 0x0

    .line 70
    :cond_4
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/QueryDownloadEpisodesResult;

    .line 71
    .line 72
    if-eqz p1, :cond_7

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/QueryDownloadEpisodesResult;->getDramaResponseList()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v1, :cond_7

    .line 79
    .line 80
    check-cast v1, Ljava/util/Collection;

    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    xor-int/2addr v1, v3

    .line 87
    if-ne v1, v3, :cond_7

    .line 88
    .line 89
    iget v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;->j:I

    .line 90
    .line 91
    if-lez v1, :cond_6

    .line 92
    .line 93
    invoke-static {p1}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    new-instance v3, Lxh/f;

    .line 98
    .line 99
    iget v4, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;->j:I

    .line 100
    .line 101
    invoke-direct {v3, v4, v1}, Lxh/f;-><init>(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB;->a:Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB;

    .line 105
    .line 106
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;->h:Ljava/lang/Object;

    .line 107
    .line 108
    iput v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;->i:I

    .line 109
    .line 110
    invoke-virtual {v1, v3, p0}, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB;->e(Lxh/f;Lrs/c;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-ne v1, v0, :cond_5

    .line 115
    .line 116
    return-object v0

    .line 117
    :cond_5
    move-object v0, p1

    .line 118
    :goto_1
    move-object p1, v0

    .line 119
    :cond_6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;->k:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->C()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;->k:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->C()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 135
    .line 136
    iget v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;->j:I

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/QueryDownloadEpisodesResult;->getDramaResponseList()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->G(ILjava/util/List;)Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Ljava/util/Collection;

    .line 147
    .line 148
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel$queryDownloadDetail$1;->k:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 161
    .line 162
    return-object p1
.end method
