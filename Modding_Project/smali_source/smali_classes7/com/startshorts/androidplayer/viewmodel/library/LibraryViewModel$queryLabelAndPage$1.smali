.class final Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$1;
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
    c = "com.startshorts.androidplayer.viewmodel.library.LibraryViewModel$queryLabelAndPage$1"
    f = "LibraryViewModel.kt"
    l = {
        0x43
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
            "Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$1;->i:Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$1;->i:Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/library/LibraryRepo;->a:Lcom/startshorts/androidplayer/repo/library/LibraryRepo;

    .line 34
    .line 35
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$1;->h:I

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/repo/library/LibraryRepo;->a(Lrs/c;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$1;->i:Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_6

    .line 51
    .line 52
    move-object v1, p1

    .line 53
    check-cast v1, Lcom/startshorts/androidplayer/bean/library/LibraryClass;

    .line 54
    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    new-instance v1, Lcom/startshorts/androidplayer/bean/library/LibraryClass;

    .line 58
    .line 59
    const/4 v6, 0x7

    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v3, 0x0

    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v5, 0x0

    .line 64
    move-object v2, v1

    .line 65
    invoke-direct/range {v2 .. v7}, Lcom/startshorts/androidplayer/bean/library/LibraryClass;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/library/LibraryClass;->getContentList()Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-nez v2, :cond_4

    .line 73
    .line 74
    new-instance v2, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    :cond_4
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/library/LibraryClass;->getClassList()Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    if-nez v3, :cond_5

    .line 84
    .line 85
    new-instance v3, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    :cond_5
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/library/LibraryClass;->setContentList(Ljava/util/ArrayList;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/library/LibraryClass;->setClassList(Ljava/util/ArrayList;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->F()Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2, v1}, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->setLibClass(Lcom/startshorts/androidplayer/bean/library/LibraryClass;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->F()Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->loadComplete()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_6

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/library/b$a;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->F()Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-direct {v2, v0}, Lcom/startshorts/androidplayer/viewmodel/library/b$a;-><init>(Lcom/startshorts/androidplayer/bean/library/LoadLibrary;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v1, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_6
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$1;->i:Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 130
    .line 131
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    if-eqz p1, :cond_7

    .line 136
    .line 137
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->D(Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 141
    .line 142
    return-object p1
.end method
