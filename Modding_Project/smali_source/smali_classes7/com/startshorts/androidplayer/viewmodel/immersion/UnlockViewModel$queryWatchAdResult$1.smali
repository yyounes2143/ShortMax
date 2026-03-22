.class final Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryWatchAdResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UnlockViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->q0(Landroid/content/Context;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel$queryWatchAdResult$1"
    f = "UnlockViewModel.kt"
    l = {
        0x10d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

.field final synthetic j:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Landroid/content/Context;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;",
            "Landroid/content/Context;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryWatchAdResult$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryWatchAdResult$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryWatchAdResult$1;->j:Landroid/content/Context;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryWatchAdResult$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryWatchAdResult$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryWatchAdResult$1;->j:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryWatchAdResult$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Landroid/content/Context;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryWatchAdResult$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryWatchAdResult$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryWatchAdResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryWatchAdResult$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryWatchAdResult$1;->h:I

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryWatchAdResult$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_a

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryWatchAdResult$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_9

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    sget-object v3, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->a:Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;

    .line 58
    .line 59
    iget-object v5, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryWatchAdResult$1;->j:Landroid/content/Context;

    .line 60
    .line 61
    sget-object p1, Lud/a;->a:Lud/a;

    .line 62
    .line 63
    invoke-virtual {p1}, Lud/a;->q()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    const-string p1, ""

    .line 70
    .line 71
    :cond_2
    move-object v8, p1

    .line 72
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryWatchAdResult$1;->h:I

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    const/4 v10, 0x1

    .line 76
    const/4 v11, 0x0

    .line 77
    move-object v9, p0

    .line 78
    invoke-static/range {v3 .. v11}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->m(Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;ZLandroid/content/Context;IILjava/lang/String;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-ne p1, v0, :cond_3

    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryWatchAdResult$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 86
    .line 87
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const-string v2, "other"

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    if-eqz v1, :cond_6

    .line 95
    .line 96
    move-object v1, p1

    .line 97
    check-cast v1, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;

    .line 98
    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;->getWatchAdResultResponse()Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->enable()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    goto :goto_1

    .line 112
    :cond_4
    move v1, v3

    .line 113
    :goto_1
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    new-instance v5, Lcom/startshorts/androidplayer/viewmodel/immersion/f$a;

    .line 118
    .line 119
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->D(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-nez v0, :cond_5

    .line 124
    .line 125
    move-object v0, v2

    .line 126
    :cond_5
    invoke-direct {v5, v1, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/f$a;-><init>(ZLjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v4, v5}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_6
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryWatchAdResult$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 133
    .line 134
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-eqz p1, :cond_8

    .line 139
    .line 140
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->z(Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/immersion/f$a;

    .line 148
    .line 149
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->D(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    if-nez v0, :cond_7

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_7
    move-object v2, v0

    .line 157
    :goto_2
    invoke-direct {v1, v3, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/f$a;-><init>(ZLjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-static {p1, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :cond_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 164
    .line 165
    return-object p1

    .line 166
    :cond_9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 167
    .line 168
    return-object p1

    .line 169
    :cond_a
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 170
    .line 171
    return-object p1
.end method
