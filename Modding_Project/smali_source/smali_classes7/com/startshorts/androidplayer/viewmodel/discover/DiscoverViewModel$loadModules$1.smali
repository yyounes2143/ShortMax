.class final Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DiscoverViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->J(I)V
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
    c = "com.startshorts.androidplayer.viewmodel.discover.DiscoverViewModel$loadModules$1"
    f = "DiscoverViewModel.kt"
    l = {
        0x9b,
        0xa0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Z

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:I

.field final synthetic l:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;

.field final synthetic m:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;ILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;",
            "I",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;->l:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;->m:I

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;->l:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;

    .line 4
    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;->m:I

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;ILrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;->k:I

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
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;->h:Z

    .line 16
    .line 17
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;->j:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;->i:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    check-cast p1, Lkotlin/Result;

    .line 27
    .line 28
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;->h:Z

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    check-cast p1, Lkotlin/Result;

    .line 47
    .line 48
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    move v6, v1

    .line 53
    move-object v1, p1

    .line 54
    move p1, v6

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    sget-object v1, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 66
    .line 67
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;->h:Z

    .line 68
    .line 69
    iput v3, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;->k:I

    .line 70
    .line 71
    invoke-virtual {v1, p0}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->n(Lrs/c;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-ne v1, v0, :cond_3

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;->l:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;

    .line 79
    .line 80
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;->m:I

    .line 81
    .line 82
    invoke-static {v1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_5

    .line 87
    .line 88
    move-object v5, v1

    .line 89
    check-cast v5, Ljava/lang/Boolean;

    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    .line 93
    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    sget-object v5, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 97
    .line 98
    iput-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;->i:Ljava/lang/Object;

    .line 99
    .line 100
    iput-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;->j:Ljava/lang/Object;

    .line 101
    .line 102
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;->h:Z

    .line 103
    .line 104
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;->k:I

    .line 105
    .line 106
    invoke-virtual {v5, v4, p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->l(ILrs/c;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-ne v2, v0, :cond_4

    .line 111
    .line 112
    return-object v0

    .line 113
    :cond_4
    move v0, p1

    .line 114
    move-object p1, v2

    .line 115
    move-object v2, v1

    .line 116
    move-object v1, v3

    .line 117
    :goto_1
    invoke-static {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->D(Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    move p1, v0

    .line 121
    move-object v1, v2

    .line 122
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;->l:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;

    .line 123
    .line 124
    invoke-static {v1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    if-eqz v1, :cond_7

    .line 129
    .line 130
    if-nez p1, :cond_6

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    const-string v2, "Job was cancelled"

    .line 137
    .line 138
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_6

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_6
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->z(Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 149
    .line 150
    return-object p1
.end method
