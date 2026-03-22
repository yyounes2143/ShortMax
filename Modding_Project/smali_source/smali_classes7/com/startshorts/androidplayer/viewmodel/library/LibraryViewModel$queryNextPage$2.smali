.class final Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LibraryViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->N(IJJLandroid/util/LongSparseArray;II)V
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
    c = "com.startshorts.androidplayer.viewmodel.library.LibraryViewModel$queryNextPage$2"
    f = "LibraryViewModel.kt"
    l = {
        0x90
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:J

.field final synthetic j:J

.field final synthetic k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic l:I

.field final synthetic m:I

.field final synthetic n:Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

.field final synthetic o:I

.field final synthetic p:Ljava/lang/String;


# direct methods
.method constructor <init>(JJLjava/util/ArrayList;IILcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;ILjava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;II",
            "Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;",
            "I",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->i:J

    .line 2
    .line 3
    iput-wide p3, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->j:J

    .line 4
    .line 5
    iput-object p5, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->k:Ljava/util/ArrayList;

    .line 6
    .line 7
    iput p6, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->l:I

    .line 8
    .line 9
    iput p7, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->m:I

    .line 10
    .line 11
    iput-object p8, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->n:Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 12
    .line 13
    iput p9, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->o:I

    .line 14
    .line 15
    iput-object p10, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->p:Ljava/lang/String;

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    invoke-direct {p0, p1, p11}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 12
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->i:J

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->j:J

    .line 6
    .line 7
    iget-object v5, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->k:Ljava/util/ArrayList;

    .line 8
    .line 9
    iget v6, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->l:I

    .line 10
    .line 11
    iget v7, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->m:I

    .line 12
    .line 13
    iget-object v8, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->n:Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 14
    .line 15
    iget v9, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->o:I

    .line 16
    .line 17
    iget-object v10, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->p:Ljava/lang/String;

    .line 18
    .line 19
    move-object v0, p1

    .line 20
    move-object v11, p2

    .line 21
    invoke-direct/range {v0 .. v11}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;-><init>(JJLjava/util/ArrayList;IILcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;ILjava/lang/String;Lrs/c;)V

    .line 22
    .line 23
    .line 24
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->h:I

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
    sget-object v1, Lcom/startshorts/androidplayer/repo/library/LibraryRepo;->a:Lcom/startshorts/androidplayer/repo/library/LibraryRepo;

    .line 34
    .line 35
    iget-wide v3, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->i:J

    .line 36
    .line 37
    iget-wide v5, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->j:J

    .line 38
    .line 39
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->k:Ljava/util/ArrayList;

    .line 40
    .line 41
    iget v7, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->l:I

    .line 42
    .line 43
    iget v8, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->m:I

    .line 44
    .line 45
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->h:I

    .line 46
    .line 47
    move-wide v2, v3

    .line 48
    move-wide v4, v5

    .line 49
    move-object v6, p1

    .line 50
    move-object v9, p0

    .line 51
    invoke-virtual/range {v1 .. v9}, Lcom/startshorts/androidplayer/repo/library/LibraryRepo;->b(JJLjava/util/ArrayList;IILrs/c;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-ne p1, v0, :cond_2

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->n:Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 59
    .line 60
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->l:I

    .line 61
    .line 62
    iget v2, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->o:I

    .line 63
    .line 64
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->p:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_6

    .line 71
    .line 72
    move-object v4, p1

    .line 73
    check-cast v4, Lcom/startshorts/androidplayer/bean/library/LibraryEpisode;

    .line 74
    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/library/LibraryEpisode;->getList()Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    if-nez v5, :cond_4

    .line 82
    .line 83
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    :cond_4
    if-eqz v4, :cond_5

    .line 89
    .line 90
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/library/LibraryEpisode;->isEnd()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    goto :goto_1

    .line 95
    :cond_5
    const/4 v4, 0x0

    .line 96
    :goto_1
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->H()Lfk/x;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v6, v4, v1}, Lfk/x;->h(ZI)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->H()Lfk/x;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lfk/x;->f()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    new-instance v4, Lcom/startshorts/androidplayer/viewmodel/library/b$c;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->H()Lfk/x;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lfk/x;->d()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-direct {v4, v2, v3, v5, v0}, Lcom/startshorts/androidplayer/viewmodel/library/b$c;-><init>(ILjava/lang/String;Ljava/util/List;Z)V

    .line 125
    .line 126
    .line 127
    invoke-static {v1, v4}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_6
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->n:Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 131
    .line 132
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->o:I

    .line 133
    .line 134
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;->p:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-eqz p1, :cond_7

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->H()Lfk/x;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v3}, Lfk/x;->f()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    new-instance v4, Lcom/startshorts/androidplayer/viewmodel/library/b$b;

    .line 154
    .line 155
    invoke-static {p1}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->p(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-direct {v4, v1, v2, p1}, Lcom/startshorts/androidplayer/viewmodel/library/b$b;-><init>(ILjava/lang/String;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v3, v4}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 170
    .line 171
    return-object p1
.end method
