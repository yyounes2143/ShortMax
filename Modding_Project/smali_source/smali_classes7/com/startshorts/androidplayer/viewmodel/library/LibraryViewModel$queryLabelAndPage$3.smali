.class final Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LibraryViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->K()V
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
    c = "com.startshorts.androidplayer.viewmodel.library.LibraryViewModel$queryLabelAndPage$3"
    f = "LibraryViewModel.kt"
    l = {
        0x58
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$3;->i:Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$3;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$3;->i:Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$3;-><init>(Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$3;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$3;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$3;->h:I

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
    sget-object v3, Lcom/startshorts/androidplayer/repo/library/LibraryRepo;->a:Lcom/startshorts/androidplayer/repo/library/LibraryRepo;

    .line 34
    .line 35
    new-instance v8, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$3;->i:Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->H()Lfk/x;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lfk/x;->c()I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$3;->h:I

    .line 51
    .line 52
    const-wide/16 v4, 0x3

    .line 53
    .line 54
    const-wide/16 v6, 0x3

    .line 55
    .line 56
    const/4 v9, 0x1

    .line 57
    move-object v11, p0

    .line 58
    invoke-virtual/range {v3 .. v11}, Lcom/startshorts/androidplayer/repo/library/LibraryRepo;->b(JJLjava/util/ArrayList;IILrs/c;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-ne p1, v0, :cond_2

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$3;->i:Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 66
    .line 67
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_6

    .line 72
    .line 73
    move-object v1, p1

    .line 74
    check-cast v1, Lcom/startshorts/androidplayer/bean/library/LibraryEpisode;

    .line 75
    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/library/LibraryEpisode;->getList()Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-nez v3, :cond_4

    .line 83
    .line 84
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    :cond_4
    if-eqz v1, :cond_5

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/library/LibraryEpisode;->isEnd()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    goto :goto_1

    .line 96
    :cond_5
    const/4 v1, 0x0

    .line 97
    :goto_1
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->H()Lfk/x;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v4, v1, v2}, Lfk/x;->h(ZI)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->H()Lfk/x;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lfk/x;->f()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->F()Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->setList(Ljava/util/List;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->F()Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->H()Lfk/x;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v2}, Lfk/x;->d()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->setComplete(Z)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->F()Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->loadComplete()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_6

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/library/b$a;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->F()Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-direct {v2, v0}, Lcom/startshorts/androidplayer/viewmodel/library/b$a;-><init>(Lcom/startshorts/androidplayer/bean/library/LoadLibrary;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v1, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_6
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$3;->i:Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 160
    .line 161
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    if-eqz p1, :cond_7

    .line 166
    .line 167
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->D(Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;Ljava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 171
    .line 172
    return-object p1
.end method
