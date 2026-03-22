.class final Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TagFilterViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->I(Ljava/lang/Long;III)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.tag.TagViewModel$queryTagFilterEpisodes$1"
    f = "TagFilterViewModel.kt"
    l = {
        0x4e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;

.field final synthetic j:Ljava/lang/Long;

.field final synthetic k:I

.field final synthetic l:I

.field final synthetic m:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;Ljava/lang/Long;IIILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;",
            "Ljava/lang/Long;",
            "III",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->i:Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->j:Ljava/lang/Long;

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->k:I

    .line 6
    .line 7
    iput p4, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->l:I

    .line 8
    .line 9
    iput p5, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->m:I

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->i:Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->j:Ljava/lang/Long;

    .line 6
    .line 7
    iget v3, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->k:I

    .line 8
    .line 9
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->l:I

    .line 10
    .line 11
    iget v5, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->m:I

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;Ljava/lang/Long;IIILrs/c;)V

    .line 16
    .line 17
    .line 18
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->h:I

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->i:Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->D()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->i:Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->K(Z)V

    .line 47
    .line 48
    .line 49
    sget-object v3, Lcom/startshorts/androidplayer/repo/tag/TagRepo;->a:Lcom/startshorts/androidplayer/repo/tag/TagRepo;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->j:Ljava/lang/Long;

    .line 52
    .line 53
    iget v5, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->k:I

    .line 54
    .line 55
    iget v6, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->l:I

    .line 56
    .line 57
    iget v7, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->m:I

    .line 58
    .line 59
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->h:I

    .line 60
    .line 61
    move-object v8, p0

    .line 62
    invoke-virtual/range {v3 .. v8}, Lcom/startshorts/androidplayer/repo/tag/TagRepo;->h(Ljava/lang/Long;IIILrs/c;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-ne p1, v0, :cond_3

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->i:Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;

    .line 70
    .line 71
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->m:I

    .line 72
    .line 73
    iget v3, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->l:I

    .line 74
    .line 75
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    const/4 v5, 0x0

    .line 80
    if-eqz v4, :cond_7

    .line 81
    .line 82
    move-object v4, p1

    .line 83
    check-cast v4, Lcom/startshorts/androidplayer/bean/tag/TagFilterShortsListResult;

    .line 84
    .line 85
    invoke-virtual {v0, v5}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->K(Z)V

    .line 86
    .line 87
    .line 88
    if-eqz v4, :cond_4

    .line 89
    .line 90
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/tag/TagFilterShortsListResult;->getList()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    if-eqz v6, :cond_4

    .line 95
    .line 96
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    move v6, v5

    .line 102
    :goto_1
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    new-instance v7, Lcom/startshorts/androidplayer/viewmodel/tag/b$c;

    .line 107
    .line 108
    if-ne v1, v2, :cond_5

    .line 109
    .line 110
    move v1, v2

    .line 111
    goto :goto_2

    .line 112
    :cond_5
    move v1, v5

    .line 113
    :goto_2
    if-ge v6, v3, :cond_6

    .line 114
    .line 115
    move v3, v2

    .line 116
    goto :goto_3

    .line 117
    :cond_6
    move v3, v5

    .line 118
    :goto_3
    invoke-direct {v7, v1, v4, v3}, Lcom/startshorts/androidplayer/viewmodel/tag/b$c;-><init>(ZLcom/startshorts/androidplayer/bean/tag/TagFilterShortsListResult;Z)V

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v7}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_7
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->i:Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;

    .line 125
    .line 126
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel$queryTagFilterEpisodes$1;->m:I

    .line 127
    .line 128
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-eqz p1, :cond_9

    .line 133
    .line 134
    invoke-virtual {v0, v5}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->K(Z)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->s(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->x(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 142
    .line 143
    .line 144
    if-ne v1, v2, :cond_8

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_8
    move v2, v5

    .line 148
    :goto_4
    invoke-virtual {v0, v2, p1}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->J(ZLcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 149
    .line 150
    .line 151
    :cond_9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 152
    .line 153
    return-object p1
.end method
